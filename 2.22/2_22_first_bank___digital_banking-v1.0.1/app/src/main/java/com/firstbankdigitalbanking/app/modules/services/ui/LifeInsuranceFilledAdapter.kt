package com.firstbankdigitalbanking.app.modules.services.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.databinding.RowLifeinsurancefilledBinding
import com.firstbankdigitalbanking.app.modules.services.`data`.model.LifeinsurancefilledRowModel
import kotlin.Int
import kotlin.collections.List

class LifeInsuranceFilledAdapter(
  var list: List<LifeinsurancefilledRowModel>
) : RecyclerView.Adapter<LifeInsuranceFilledAdapter.RowLifeinsurancefilledVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLifeinsurancefilledVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_lifeinsurancefilled,parent,false)
    return RowLifeinsurancefilledVH(view)
  }

  override fun onBindViewHolder(holder: RowLifeinsurancefilledVH, position: Int) {
    val lifeinsurancefilledRowModel = LifeinsurancefilledRowModel()
    // TODO uncomment following line after integration with data source
    // val lifeinsurancefilledRowModel = list[position]
    holder.binding.lifeinsurancefilledRowModel = lifeinsurancefilledRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<LifeinsurancefilledRowModel>) {
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
      item: LifeinsurancefilledRowModel
    ) {
    }
  }

  inner class RowLifeinsurancefilledVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLifeinsurancefilledBinding = RowLifeinsurancefilledBinding.bind(itemView)
  }
}
