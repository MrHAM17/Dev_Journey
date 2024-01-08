package com.safebankmobilebankingapp.app.modules.minepage.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.databinding.RowThirtytwoBinding
import com.safebankmobilebankingapp.app.modules.minepage.`data`.model.ThirtytwoRowModel
import kotlin.Int
import kotlin.collections.List

class ThirtyTwoAdapter(
  var list: List<ThirtytwoRowModel>
) : RecyclerView.Adapter<ThirtyTwoAdapter.RowThirtytwoVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowThirtytwoVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_thirtytwo,parent,false)
    return RowThirtytwoVH(view)
  }

  override fun onBindViewHolder(holder: RowThirtytwoVH, position: Int) {
    val thirtytwoRowModel = ThirtytwoRowModel()
    // TODO uncomment following line after integration with data source
    // val thirtytwoRowModel = list[position]
    holder.binding.thirtytwoRowModel = thirtytwoRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ThirtytwoRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: ThirtytwoRowModel
    ) {
    }
  }

  inner class RowThirtytwoVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowThirtytwoBinding = RowThirtytwoBinding.bind(itemView)
  }
}
